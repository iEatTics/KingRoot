.class Lcom/kingroot/kinguser/page/MainPage$27$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/page/MainPage$27;->onShowWaitDownloadCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBs:I

.field final synthetic bap:Lcom/kingroot/kinguser/page/MainPage$27;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/page/MainPage$27;I)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/kingroot/kinguser/page/MainPage$27$2;->bap:Lcom/kingroot/kinguser/page/MainPage$27;

    iput p2, p0, Lcom/kingroot/kinguser/page/MainPage$27$2;->aBs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/kingroot/kinguser/page/MainPage$27$2;->bap:Lcom/kingroot/kinguser/page/MainPage$27;

    iget-object v0, v0, Lcom/kingroot/kinguser/page/MainPage$27;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/page/MainPage$27$2;->aBs:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fM(I)V

    .line 1513
    return-void
.end method
