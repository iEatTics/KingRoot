.class Lcom/kingroot/kinguser/vg$1;
.super Lcom/kingroot/kinguser/vk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vk",
        "<",
        "Lcom/kingroot/kinguser/vf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic KA:Lcom/kingroot/kinguser/vg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vg;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/vk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vg;->a(Lcom/kingroot/kinguser/vg;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    iget-object v1, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/vg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vg;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method

.method public synthetic a(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vg$1;->b(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public b(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vg;->a(Lcom/kingroot/kinguser/vg;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    iget-object v1, p0, Lcom/kingroot/kinguser/vg$1;->KA:Lcom/kingroot/kinguser/vg;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/kingroot/kinguser/vg;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vg;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method public synthetic b(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 109
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/vg$1;->a(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method
