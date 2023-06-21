.class Lcom/kingroot/kinguser/axm$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Mg()V
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
    .line 1078
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->r(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/apy;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$7$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$7$1;-><init>(Lcom/kingroot/kinguser/axm$7;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apy;->a(Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 1095
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/bav;->dA(Z)V

    .line 1097
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    const-wide/32 v2, 0x7f0703d4

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/axm;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 1099
    :cond_0
    return-void
.end method
