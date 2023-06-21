.class public Lcom/kingroot/kinguser/model/RootMgrAppModel;
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
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aQQ:Lcom/kingroot/kinguser/model/AppInfo;

.field public aQR:I

.field public aQS:I

.field public ot:I

.field public riskDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/kingroot/kinguser/model/RootMgrAppModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/model/RootMgrAppModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/model/RootMgrAppModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/AppInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQR:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
