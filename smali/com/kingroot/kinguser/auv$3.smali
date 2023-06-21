.class Lcom/kingroot/kinguser/auv$3;
.super Lcom/kingroot/kinguser/vk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/auv;
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
.field final synthetic aTe:Lcom/kingroot/kinguser/auv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auv;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/kingroot/kinguser/auv$3;->aTe:Lcom/kingroot/kinguser/auv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/vk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vf;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/auv$3;->aTe:Lcom/kingroot/kinguser/auv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/auv;->a(Lcom/kingroot/kinguser/auv;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/auv$3;->aTe:Lcom/kingroot/kinguser/auv;

    invoke-static {v0}, Lcom/kingroot/kinguser/auv;->a(Lcom/kingroot/kinguser/auv;)V

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wn()V

    .line 395
    return-void
.end method

.method public synthetic a(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 385
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/auv$3;->b(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public b(Lcom/kingroot/kinguser/vf;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/auv$3;->aTe:Lcom/kingroot/kinguser/auv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/auv;->a(Lcom/kingroot/kinguser/auv;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 404
    return-void
.end method

.method public synthetic b(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 385
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/auv$3;->a(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method
