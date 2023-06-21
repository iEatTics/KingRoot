.class public Lcom/kingroot/common/framework/broadcast/KBroadCastService$1;
.super Lcom/kingroot/common/framework/broadcast/IBroadCastService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ti;->I(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ti;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ti;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/kingroot/common/framework/broadcast/KBroadCastService$1;->this$0:Lcom/kingroot/kinguser/ti;

    invoke-direct {p0}, Lcom/kingroot/common/framework/broadcast/IBroadCastService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registCallBack(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p1}, Lcom/kingroot/kinguser/ti;->c(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 24
    return-void
.end method
