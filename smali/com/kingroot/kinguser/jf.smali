.class abstract Lcom/kingroot/kinguser/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ll;


# instance fields
.field private qR:Ljava/lang/String;

.field private qZ:Lcom/kingroot/kinguser/hh;

.field private sS:Z

.field private sT:I

.field private sn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/kingroot/kinguser/hh;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/jf;->qR:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/kingroot/kinguser/jf;->sn:I

    .line 19
    iput p3, p0, Lcom/kingroot/kinguser/jf;->sT:I

    .line 20
    iput-object p4, p0, Lcom/kingroot/kinguser/jf;->qZ:Lcom/kingroot/kinguser/hh;

    .line 21
    return-void
.end method


# virtual methods
.method public aZ()Lcom/kingroot/kinguser/hh;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/jf;->qZ:Lcom/kingroot/kinguser/hh;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/kingroot/kinguser/jf;->sS:Z

    .line 48
    return-void
.end method

.method public ba()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/kingroot/kinguser/jf;->sS:Z

    return v0
.end method

.method public ct()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x6000001

    return v0
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/jf;->sn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/jf;->qR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/jf;->sT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/jf;->qZ:Lcom/kingroot/kinguser/hh;

    check-cast v0, Lcom/kingroot/kinguser/lr;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/lr;->d(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/jf;->sn:I

    return v0
.end method
