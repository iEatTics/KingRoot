.class Lcom/kingroot/kinguser/atm$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->Pg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 814
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 815
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {}, Lcom/kingroot/kinguser/atu;->OH()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;Ljava/util/List;)Ljava/util/List;

    .line 816
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$8;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 819
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/atm$8$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atm$8$1;-><init>(Lcom/kingroot/kinguser/atm$8;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
