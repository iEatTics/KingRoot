.class public Lcom/kingroot/kinguser/pw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic yp:J

.field final synthetic zh:Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;


# direct methods
.method public constructor <init>(Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;J)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/pw;->zh:Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;

    iput-wide p2, p0, Lcom/kingroot/kinguser/pw;->yp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/cay;->akw()Lcom/kingroot/kinguser/cay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cay;->akx()Lcom/kingroot/kinguser/pe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/pe;->gj()Lcom/kingroot/kinguser/cbe;

    move-result-object v0

    .line 53
    iget-wide v2, p0, Lcom/kingroot/kinguser/pw;->yp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cbe;->dd(Ljava/lang/String;)V

    .line 54
    return-void
.end method
