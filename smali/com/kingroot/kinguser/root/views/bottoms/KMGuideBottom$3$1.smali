.class Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgt:Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3$1;->bgt:Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3$1;->bgt:Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 225
    return-void
.end method
