.class public Lkingcom/core/network/download/UpdateInfo;
.super Lkingcom/entity/BaseEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lkingcom/core/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public all_check_sum:Ljava/lang/String;

.field public buildNum:I

.field public checksum:Ljava/lang/String;

.field public data:[B

.field public fileName:Ljava/lang/String;

.field public flag:I

.field public is_increase_update:I

.field public localName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public record_num:I

.field public size:I

.field public timestamp:I

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/kingroot/kinguser/cai;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cai;-><init>()V

    sput-object v0, Lkingcom/core/network/download/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lkingcom/entity/BaseEntity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->is_increase_update:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lkingcom/entity/BaseEntity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->is_increase_update:I

    .line 127
    invoke-virtual {p0, p1}, Lkingcom/core/network/download/UpdateInfo;->d(Landroid/os/Parcel;)V

    .line 128
    return-void
.end method


# virtual methods
.method public d(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->flag:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->type:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->url:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->checksum:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->timestamp:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->title:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->message:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->version:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->buildNum:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->is_increase_update:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->all_check_sum:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->data:[B

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->record_num:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->size:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->localName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lkingcom/core/network/download/UpdateInfo;->id:I

    .line 148
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->checksum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->timestamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->buildNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->is_increase_update:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->all_check_sum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->record_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lkingcom/core/network/download/UpdateInfo;->localName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget v0, p0, Lkingcom/core/network/download/UpdateInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    return-void
.end method
