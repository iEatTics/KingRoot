.class Lcom/kingroot/kinguser/bci$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->Ui()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$7;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 388
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$7;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->h(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bci$a;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bci$7$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bci$7$1;-><init>(Lcom/kingroot/kinguser/bci$7;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bci$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->te()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$7;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$7;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    goto :goto_0
.end method
