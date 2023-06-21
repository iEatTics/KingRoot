.class public Lcom/kingroot/kinguser/bvp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bQD:I

.field public bQE:Ljava/lang/String;

.field public bQF:Ljava/lang/String;

.field public bQG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public bQH:Lcom/qq/jce/wup/UniPacket;

.field public bQI:Lcom/qq/jce/wup/UniPacket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v1}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvp;->bQH:Lcom/qq/jce/wup/UniPacket;

    .line 36
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v1}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    .line 7
    return-void
.end method
