.class final Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aq(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo$1;->aq(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    move-result-object v0

    return-object v0
.end method

.method public fE(I)[Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;
    .locals 1

    .prologue
    .line 130
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo$1;->fE(I)[Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    move-result-object v0

    return-object v0
.end method
