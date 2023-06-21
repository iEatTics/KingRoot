.class Lcom/kingroot/kinguser/page/MainPage$27$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/page/MainPage$27;->onShowNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bap:Lcom/kingroot/kinguser/page/MainPage$27;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/page/MainPage$27;)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/kingroot/kinguser/page/MainPage$27$4;->bap:Lcom/kingroot/kinguser/page/MainPage$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/kingroot/kinguser/page/MainPage$27$4;->bap:Lcom/kingroot/kinguser/page/MainPage$27;

    iget-object v0, v0, Lcom/kingroot/kinguser/page/MainPage$27;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fK(I)V

    .line 1533
    return-void
.end method
