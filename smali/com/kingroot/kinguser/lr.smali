.class public Lcom/kingroot/kinguser/lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hh;


# instance fields
.field public final pid:I

.field public final process:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/kingroot/kinguser/lr;->uid:I

    .line 26
    iput-object p2, p0, Lcom/kingroot/kinguser/lr;->process:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/kingroot/kinguser/lr;->pid:I

    .line 28
    return-void
.end method


# virtual methods
.method public aX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/lr;->pid:I

    return v0
.end method

.method public aY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/lr;->process:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/lr;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/lr;->process:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/lr;->process:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
