.class Lcom/kingroot/kinguser/axh$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axh$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYI:Lcom/kingroot/kinguser/aqc;

.field final synthetic aYJ:Lcom/kingroot/kinguser/aqh;

.field final synthetic aYK:Lcom/kingroot/kinguser/axh$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh$3;Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqh;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/axh$3$1;->aYI:Lcom/kingroot/kinguser/aqc;

    iput-object p3, p0, Lcom/kingroot/kinguser/axh$3$1;->aYJ:Lcom/kingroot/kinguser/aqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axh$3$1;->aYI:Lcom/kingroot/kinguser/aqc;

    iget-object v1, v1, Lcom/kingroot/kinguser/aqc;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aqa;->il(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    iget-object v1, p0, Lcom/kingroot/kinguser/axh$3$1;->aYJ:Lcom/kingroot/kinguser/aqh;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqh;->MK()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;I)V

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/aqe;->MD()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v2}, Lcom/kingroot/kinguser/axh;->c(Lcom/kingroot/kinguser/axh;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aqa;->ij(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/kingroot/kinguser/axh$3$1;->aYK:Lcom/kingroot/kinguser/axh$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aqa;->ik(Ljava/lang/String;)V

    .line 236
    return-void
.end method
