.class public Lcom/kingroot/loader/o$1;
.super Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bkm;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

.field final synthetic b:Lcom/kingroot/kinguser/bkm;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bkm;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingroot/loader/o$1;->b:Lcom/kingroot/kinguser/bkm;

    iput-object p2, p0, Lcom/kingroot/loader/o$1;->a:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

    invoke-direct {p0}, Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostCompleted(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/loader/o$1;->a:Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;->onPostCompleted(Ljava/lang/String;I)V

    .line 150
    return-void
.end method
