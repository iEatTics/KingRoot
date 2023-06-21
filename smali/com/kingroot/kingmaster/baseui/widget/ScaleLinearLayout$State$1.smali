.class final Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;
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
        "Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State$1;->x(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;

    move-result-object v0

    return-object v0
.end method

.method public cu(I)[Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;
    .locals 1

    .prologue
    .line 87
    new-array v0, p1, [Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State$1;->cu(I)[Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroid/os/Parcel;)Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;

    invoke-direct {v0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLinearLayout$State;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
