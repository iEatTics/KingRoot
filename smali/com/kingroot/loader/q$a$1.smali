.class Lcom/kingroot/loader/q$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/loader/q$a;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bzk:Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;

.field final synthetic bzl:Lcom/kingroot/loader/q$a;


# direct methods
.method constructor <init>(Lcom/kingroot/loader/q$a;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/loader/q$a$1;->bzl:Lcom/kingroot/loader/q$a;

    iput-object p2, p0, Lcom/kingroot/loader/q$a$1;->bzk:Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCompleted(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/q$a$1;->bzk:Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;->onPostCompleted(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
