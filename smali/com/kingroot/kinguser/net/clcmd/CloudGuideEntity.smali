.class public Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final aTl:Ljava/text/SimpleDateFormat;

.field private static final serialVersionUID:J


# instance fields
.field public downloadTime:I

.field public final jumpParams:Ljava/lang/String;

.field public final jumpType:I

.field public final language:I

.field public lastDownloadTime:J

.field public lastShowTime:J

.field public final maxShowTime:I

.field public final picDownloadUrl:Ljava/lang/String;

.field public final seqNo:I

.field public final showPriority:I

.field public showTime:I

.field public final subTitle:Ljava/lang/String;

.field public final taskID:J

.field public final timeInterval:I

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->aTl:Ljava/text/SimpleDateFormat;

    .line 108
    new-instance v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    .line 60
    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    .line 123
    :try_start_0
    iput-wide p1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    .line 124
    iput p3, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    .line 125
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    .line 126
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->title:Ljava/lang/String;

    .line 127
    const/4 v0, 0x2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->subTitle:Ljava/lang/String;

    .line 128
    const/4 v0, 0x3

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    .line 129
    const/4 v0, 0x4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    .line 130
    const/4 v0, 0x5

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    .line 131
    const/4 v0, 0x6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->timeInterval:I

    .line 132
    const/4 v0, 0x7

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    .line 133
    const/16 v0, 0x8

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    .line 139
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x7

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_2
    const/16 v0, 0x8

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Illegal Arguments pas to newInstance(List<String>)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    .line 60
    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    .line 62
    iput-wide v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    .line 64
    iput-wide v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->subTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->timeInterval:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a(JILjava/util/List;)Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;-><init>(JILjava/util/List;)V

    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 166
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    if-ne v0, v2, :cond_2

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jq(Ljava/lang/String;)Z

    goto :goto_0

    .line 171
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    if-ne v0, v3, :cond_3

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jp(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    array-length v1, v0

    if-ne v1, v3, :cond_0

    .line 178
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static jp(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static jq(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/zh;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudGuideEntity taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n taskID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n seqNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n subTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n picDownloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n jumpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n jumpParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n timeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->timeInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n showPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n maxShowTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n showTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n downloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n lastDownloadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->aTl:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 157
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n lastShowTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->aTl:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 158
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->subTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->jumpParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->timeInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-wide v0, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    return-void
.end method
