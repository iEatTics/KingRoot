.class final Lcloudsdk/ext/kr/RootHandler$3;
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
    .line 82
    iput-object p1, p0, Lcloudsdk/ext/kr/RootHandler$3;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$3;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->d(Lcloudsdk/ext/kr/RootHandler;)V

    .line 86
    return-void
.end method
