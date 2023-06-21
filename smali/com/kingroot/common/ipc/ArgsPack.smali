.class public Lcom/kingroot/common/ipc/ArgsPack;
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
            "Lcom/kingroot/common/ipc/ArgsPack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mIndex:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack$1;

    invoke-direct {v0}, Lcom/kingroot/common/ipc/ArgsPack$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/ipc/ArgsPack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mClassLoader:Ljava/lang/ClassLoader;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mSize:I

    .line 121
    :goto_0
    iget v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mSize:I

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/common/ipc/ArgsPack;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/common/ipc/ArgsPack$1;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mClassLoader:Ljava/lang/ClassLoader;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public kE()[Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    iget v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    iget-object v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    iget-object v2, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    iget-object v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    iget v1, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/common/ipc/ArgsPack;->IS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method
