.class final Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aJ(Landroid/os/Parcel;)Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;-><init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;->aJ(Landroid/os/Parcel;)Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public ij(I)[Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;
    .locals 1

    .prologue
    .line 134
    new-array v0, p1, [Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo$1;->ij(I)[Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    move-result-object v0

    return-object v0
.end method
