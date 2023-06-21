.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQi:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;


# instance fields
.field public buttonWording:Ljava/lang/String;

.field public buttonWordingMini:Ljava/lang/String;

.field public mainTitle:Ljava/lang/String;

.field public picUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->bQi:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->mainTitle:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWording:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWordingMini:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->picUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 16
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->mainTitle:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWording:Ljava/lang/String;

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWordingMini:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->bQi:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->picUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->mainTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->mainTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWording:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWording:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWordingMini:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->buttonWordingMini:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->picUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReminderHelperTips;->picUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 35
    :cond_3
    return-void
.end method
