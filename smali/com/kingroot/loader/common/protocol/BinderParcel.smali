.class public Lcom/kingroot/loader/common/protocol/BinderParcel;
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
            "Lcom/kingroot/loader/common/protocol/BinderParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public binder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/kingroot/loader/common/protocol/BinderParcel$1;

    invoke-direct {v0}, Lcom/kingroot/loader/common/protocol/BinderParcel$1;-><init>()V

    sput-object v0, Lcom/kingroot/loader/common/protocol/BinderParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kingroot/loader/common/protocol/BinderParcel;->binder:Landroid/os/IBinder;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/common/protocol/BinderParcel;->binder:Landroid/os/IBinder;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/loader/common/protocol/BinderParcel$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/kingroot/loader/common/protocol/BinderParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Landroid/os/IBinder;)Lcom/kingroot/loader/common/protocol/BinderParcel;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/loader/common/protocol/BinderParcel;

    invoke-direct {v0, p0}, Lcom/kingroot/loader/common/protocol/BinderParcel;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/loader/common/protocol/BinderParcel;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 36
    return-void
.end method
