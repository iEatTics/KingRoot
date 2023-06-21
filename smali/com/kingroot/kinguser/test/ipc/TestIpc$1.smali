.class public Lcom/kingroot/kinguser/test/ipc/TestIpc$1;
.super Lcom/kingroot/common/ipc/IIpcCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bdy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bdy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bdy;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kingroot/kinguser/test/ipc/TestIpc$1;->this$0:Lcom/kingroot/kinguser/bdy;

    invoke-direct {p0}, Lcom/kingroot/common/ipc/IIpcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
