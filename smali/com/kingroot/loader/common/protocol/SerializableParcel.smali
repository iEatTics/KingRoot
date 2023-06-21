.class public Lcom/kingroot/loader/common/protocol/SerializableParcel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/loader/common/protocol/SerializableParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public serializable:Ljava/io/Serializable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/loader/common/protocol/SerializableParcel$1;

    invoke-direct {v0}, Lcom/kingroot/loader/common/protocol/SerializableParcel$1;-><init>()V

    sput-object v0, Lcom/kingroot/loader/common/protocol/SerializableParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/common/protocol/SerializableParcel;->serializable:Ljava/io/Serializable;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/loader/common/protocol/SerializableParcel$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/kingroot/loader/common/protocol/SerializableParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/Serializable;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/kingroot/loader/common/protocol/SerializableParcel;->serializable:Ljava/io/Serializable;

    .line 23
    return-void
.end method

.method public static obtain(Ljava/io/Serializable;)Lcom/kingroot/loader/common/protocol/SerializableParcel;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/loader/common/protocol/SerializableParcel;

    invoke-direct {v0, p0}, Lcom/kingroot/loader/common/protocol/SerializableParcel;-><init>(Ljava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/loader/common/protocol/SerializableParcel;->serializable:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 37
    return-void
.end method
