.class public Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;
.super Lcom/tencent/qqpimsecure/seachsdk/common/BaseEntity;
.source "SourceFile"


# instance fields
.field public categoryID:I

.field public categoryType:I

.field public fetchOffset:I

.field public fetchSize:I

.field public groupId:J

.field public keyWord:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public pushType:I

.field public queryKeyWord:Ljava/lang/String;

.field public sort_type:I

.field public sourceId:J

.field public tabType:I

.field public tagId:J

.field public time:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 10
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/seachsdk/common/BaseEntity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->pushType:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->tabType:I

    .line 36
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->groupId:J

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->queryKeyWord:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->pkgName:Ljava/lang/String;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->sourceId:J

    .line 40
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->tagId:J

    .line 10
    return-void
.end method


# virtual methods
.method public aiD()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->sort_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    iget v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 91
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :sswitch_0
    const-string v2, "categoryid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 57
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 58
    const-string v3, "&begin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 59
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 60
    const-string v3, "&items="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 61
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 62
    const-string v3, "&order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 64
    const-string v2, "&qua="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/buw;->qa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&V2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 66
    const-string v2, "&guid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 67
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 68
    const-string v2, "&query="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :sswitch_1
    const-string v2, "categoryid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 73
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 74
    const-string v3, "&begin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 75
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 76
    const-string v3, "&items="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 77
    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 78
    const-string v3, "&order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 80
    const-string v2, "&pkgname="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 84
    :sswitch_2
    const-string v0, "categorytype="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x8 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method
