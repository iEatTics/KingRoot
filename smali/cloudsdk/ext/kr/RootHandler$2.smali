.class final Lcloudsdk/ext/kr/RootHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcloudsdk/ext/kr/RootHandler;->handleMessage(Landroid/os/Message;)V
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
    .line 72
    iput-object p1, p0, Lcloudsdk/ext/kr/RootHandler$2;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 75
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$2;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(Lcloudsdk/ext/kr/RootHandler;I)I

    .line 76
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$2;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->a(Lcloudsdk/ext/kr/RootHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(I)V

    .line 77
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$2;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->c(Lcloudsdk/ext/kr/RootHandler;)V

    .line 78
    return-void
.end method
