.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

.field static bPO:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

.field static bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;


# instance fields
.field public orderId:J

.field public softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

.field public tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

.field public tipsPos:J

.field public validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 48
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPO:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 50
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    .line 11
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 12
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    .line 13
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 14
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 17
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    .line 56
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 57
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    .line 58
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPO:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 59
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 60
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 25
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->orderId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    :cond_1
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 31
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsPos:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 39
    :cond_4
    return-void
.end method
