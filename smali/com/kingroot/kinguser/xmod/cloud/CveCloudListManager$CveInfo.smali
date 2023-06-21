.class public Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CveInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final buw:[I


# instance fields
.field public bur:Ljava/lang/String;

.field public bus:Ljava/lang/String;

.field public but:Ljava/lang/String;

.field public buu:Ljava/lang/String;

.field public buv:I

.field public desc:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public level:I

.field public name:Ljava/lang/String;

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buw:[I

    .line 179
    new-instance v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 138
    :array_0
    .array-data 4
        0x0
        0x7f0704be
        0x7f0702e7
        0x7f0702ea
        0x7f0702e9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bur:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->level:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->desc:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bus:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->but:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buu:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lang:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    .line 159
    return-void
.end method

.method private lR(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    iput v1, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    .line 204
    sget-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buw:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->level:I

    .line 207
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    sget-object v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 210
    iput v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    .line 211
    sget-object v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buw:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->level:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public c(Lcom/kingroot/kinguser/bq;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bur:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lR(Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->desc:Ljava/lang/String;

    .line 196
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bus:Ljava/lang/String;

    .line 197
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->but:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kS:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buu:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kT:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lang:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bur:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->bus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->but:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->buv:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
