.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseTrafficStatsCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    }
.end annotation


# instance fields
.field private mThreadSocketTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;-><init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V

    iput-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 58
    return-void
.end method

.method public getThreadStatsTag()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    iget v0, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    return v0
.end method

.method public incrementOperationCount(I)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public incrementOperationCount(II)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setThreadStatsTag(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;->mThreadSocketTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    iput p1, v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    .line 76
    return-void
.end method

.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
