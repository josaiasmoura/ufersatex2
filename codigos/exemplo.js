const PeerNetwork = require("@josaiasmoura/peer-network");

let peer = new PeerNetwork({ group:"NomeDaRede", password:"senhadarede" });

peer.on("ready", () => {
    console.log("Estou online!");
}).on("message", (msg, from) => {
    console.log("Voce recebeu uma mensagem! ", from, msg.toString());
}).on("online", (newPeer) => {
    console.log("Novo peer online! ", newPeer);
    peer.send(Buffer.from("Ola novo peer"), newPeer);
}).on("offline", (offPeer) => {
    console.log("Peer esta offline agora! ", offPeer);
}).on("warning", (err) => {
    console.log("Alerta! " + err.message);
});

peer.start();
