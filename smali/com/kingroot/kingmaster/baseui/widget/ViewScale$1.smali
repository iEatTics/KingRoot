.class final Lcom/kingroot/kingmaster/baseui/widget/ViewScale$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/baseui/widget/ViewScale;
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
        "Lcom/kingroot/kingmaster/baseui/widget/ViewScale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ViewScale$1;->y(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ViewScale;

    move-result-object v0

    return-object v0
.end method

.method public cv(I)[Lcom/kingroot/kingmaster/baseui/widget/ViewScale;
    .locals 1

    .prologue
    .line 127
    new-array v0, p1, [Lcom/kingroot/kingmaster/baseui/widget/ViewScale;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ViewScale$1;->cv(I)[Lcom/kingroot/kingmaster/baseui/widget/ViewScale;

    move-result-object v0

    return-object v0
.end method

.method public y(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ViewScale;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;

    invoke-direct {v0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ViewScale;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
