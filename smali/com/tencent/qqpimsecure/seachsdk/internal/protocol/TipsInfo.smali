.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQA:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

.field static bQB:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

.field static bQC:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;


# instance fields
.field public floatingWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

.field public notifyWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

.field public reminderHelperTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQA:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    .line 42
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQB:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    .line 44
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQC:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->reminderHelperTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    .line 13
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->notifyWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    .line 14
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->floatingWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    .line 17
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQA:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->reminderHelperTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    .line 50
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQB:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->notifyWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    .line 51
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->bQC:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->floatingWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    .line 52
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->reminderHelperTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->reminderHelperTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->notifyWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->notifyWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/NotifyWindowTips;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->floatingWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;->floatingWindowTips:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/FloatingWindowTips;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    :cond_2
    return-void
.end method
