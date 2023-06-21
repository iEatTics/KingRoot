.class final Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;
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
        "Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State$1;->w(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    move-result-object v0

    return-object v0
.end method

.method public ct(I)[Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;
    .locals 1

    .prologue
    .line 404
    new-array v0, p1, [Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State$1;->ct(I)[Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    move-result-object v0

    return-object v0
.end method

.method public w(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;

    invoke-direct {v0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$State;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
