.class Lcom/kingroot/kinguser/axm$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$4;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 855
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 856
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acN()Lcom/kingroot/kinguser/bhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhv;->refresh()V

    .line 857
    new-instance v0, Lcom/kingroot/kinguser/axm$4$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm$4$1;-><init>(Lcom/kingroot/kinguser/axm$4;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method
