.class final Lcloudsdk/ext/kr/RootHandler$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcloudsdk/ext/kr/RootHandler;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic I:Lcloudsdk/ext/kr/RootHandler;


# direct methods
.method constructor <init>(Lcloudsdk/ext/kr/RootHandler;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcloudsdk/ext/kr/RootHandler$7;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    const-string v1, "rootStep"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    const-string v2, "idx"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 320
    const-string v3, "count"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 321
    const-string v4, "sid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$7;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->e(Lcloudsdk/ext/kr/RootHandler;)Lcloudsdk/ext/kr/ProgressHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/ProgressHandler;->setRootStep(I)V

    .line 323
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$7;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->e(Lcloudsdk/ext/kr/RootHandler;)Lcloudsdk/ext/kr/ProgressHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcloudsdk/ext/kr/ProgressHandler;->setSolutionCount(I)V

    .line 324
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$7;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->e(Lcloudsdk/ext/kr/RootHandler;)Lcloudsdk/ext/kr/ProgressHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/ProgressHandler;->setSolutionIdx(I)V

    .line 325
    const/4 v0, 0x1

    return v0
.end method
