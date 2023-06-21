.class public final Lcom/kingroot/kinguser/ap;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static ht:Lcom/kingroot/kinguser/am;

.field static ig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static ih:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/an;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hX:I

.field public hY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public hZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/an;",
            ">;"
        }
    .end annotation
.end field

.field public hr:I

.field public hs:Lcom/kingroot/kinguser/am;

.field public ia:I

.field public ib:Z

.field public ic:Z

.field public ie:I

.field public if:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ap;->ig:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/kingroot/kinguser/ap;->ig:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ap;->ih:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/an;

    invoke-direct {v0}, Lcom/kingroot/kinguser/an;-><init>()V

    .line 66
    sget-object v1, Lcom/kingroot/kinguser/ap;->ih:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/kingroot/kinguser/am;

    invoke-direct {v0}, Lcom/kingroot/kinguser/am;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ap;->ht:Lcom/kingroot/kinguser/am;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/ap;->hr:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    .line 12
    iput-object v1, p0, Lcom/kingroot/kinguser/ap;->hY:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    .line 15
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ap;->ib:Z

    .line 16
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ap;->ic:Z

    .line 17
    const/16 v0, 0x78

    iput v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    .line 19
    iput-object v1, p0, Lcom/kingroot/kinguser/ap;->hs:Lcom/kingroot/kinguser/am;

    .line 22
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/ap;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ap;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hr:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ap;->hr:I

    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    .line 75
    sget-object v0, Lcom/kingroot/kinguser/ap;->ig:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ap;->hY:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/ap;->ih:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    .line 77
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    .line 78
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ib:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ib:Z

    .line 79
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ic:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ic:Z

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    .line 82
    sget-object v0, Lcom/kingroot/kinguser/ap;->ht:Lcom/kingroot/kinguser/am;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/am;

    iput-object v0, p0, Lcom/kingroot/kinguser/ap;->hs:Lcom/kingroot/kinguser/am;

    .line 83
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    if-eqz v0, :cond_0

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hY:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hY:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 39
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    if-eqz v0, :cond_3

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 42
    :cond_3
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ib:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 43
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ap;->ic:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_4

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hs:Lcom/kingroot/kinguser/am;

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hs:Lcom/kingroot/kinguser/am;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 53
    :cond_6
    return-void
.end method
