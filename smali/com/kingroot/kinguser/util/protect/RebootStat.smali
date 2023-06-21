.class public Lcom/kingroot/kinguser/util/protect/RebootStat;
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
            "Lcom/kingroot/kinguser/util/protect/RebootStat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public androidRebootCount:I

.field public androidRebootPeekCount:I

.field public currentStep:I

.field public deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

.field public errCodeJSON:Ljava/lang/String;

.field public failCount:I

.field public failPeekCount:I

.field public initStep:I

.field public key:Ljava/lang/String;

.field public linuxRebootCount:I

.field public linuxRebootPeekCount:I

.field public savedMsgJSON:Ljava/lang/String;

.field public successCount:I

.field public successPeekCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/kingroot/kinguser/util/protect/RebootStat$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/util/protect/RebootStat$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/util/protect/RebootStat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->key:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/util/protect/RebootStat$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/util/protect/RebootStat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->key:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 56
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    .line 57
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    .line 58
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    .line 59
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 60
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    .line 61
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    .line 62
    iput p2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    .line 63
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    .line 64
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 65
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    .line 66
    return-void
.end method


# virtual methods
.method public Q(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    .line 103
    :goto_1
    return-void

    .line 96
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public R(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 128
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    .line 133
    :goto_1
    return-void

    .line 126
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public acD()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 70
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 71
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public iO(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "-999"

    .line 87
    :goto_0
    return-object v0

    .line 81
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 87
    const-string v0, "-999"

    goto :goto_0
.end method

.method public iP(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "-999"

    .line 117
    :goto_0
    return-object v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 117
    const-string v0, "-999"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->errCodeJSON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->savedMsgJSON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return-void
.end method
