.class public Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x22d77079b587bc9L


# instance fields
.field public apkName:Ljava/lang/String;

.field public appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final backgroundUrl:Ljava/lang/String;

.field public final buttonText:Ljava/lang/String;

.field public categoryId:I

.field public channelId:Ljava/lang/String;

.field public final content:Ljava/lang/String;

.field public final destinationUrl:Ljava/lang/String;

.field public final expireTime:J

.field public hasNextPage:Z

.field public final iconBigUrl:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final id:J

.field public index:I

.field public final isAutoRun:Z

.field public isNeedGuide:Z

.field public final isPush:Z

.field public final jumpParam:Ljava/lang/String;

.field public final jumpType:I

.field public final modelId:I

.field public nextPageIndex:I

.field public final packageName:Ljava/lang/String;

.field public pageId:I

.field public final priority:I

.field public searchKeyWord:Ljava/lang/String;

.field public tagId:J

.field public final title:Ljava/lang/String;

.field public final topicId:Ljava/lang/String;

.field public final type:I

.field public final viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;JILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v2, -0x7e0

    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->pageId:I

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->hasNextPage:Z

    .line 81
    iput-wide p1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->id:J

    .line 82
    iput p3, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->modelId:I

    .line 83
    iput p4, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->type:I

    .line 84
    iput p5, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->categoryId:I

    .line 85
    iput-object p6, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->title:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->content:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->buttonText:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->iconUrl:Ljava/lang/String;

    .line 89
    iput-object p10, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->iconBigUrl:Ljava/lang/String;

    .line 90
    iput-object p11, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->backgroundUrl:Ljava/lang/String;

    .line 91
    iput-object p12, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->appList:Ljava/util/ArrayList;

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->destinationUrl:Ljava/lang/String;

    .line 93
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->expireTime:J

    .line 94
    move/from16 v0, p16

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->priority:I

    .line 95
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->packageName:Ljava/lang/String;

    .line 96
    move/from16 v0, p18

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->jumpType:I

    .line 97
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->jumpParam:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->viewId:Ljava/lang/String;

    .line 99
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->topicId:Ljava/lang/String;

    .line 100
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->isPush:Z

    .line 101
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->isAutoRun:Z

    .line 102
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoftwareAdvertiseEntity [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->modelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconBigUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->iconBigUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->backgroundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->appList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destinationUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->destinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->expireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->apkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string v1, ", jumpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->jumpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jumpParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->jumpParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->topicId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, ", isPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->isPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->isAutoRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNeedGuide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->isNeedGuide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->pageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasNextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->hasNextPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, ", nextPageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->nextPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->tagId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->searchKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->appList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method
