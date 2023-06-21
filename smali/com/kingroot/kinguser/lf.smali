.class public Lcom/kingroot/kinguser/lf;
.super Lcom/kingroot/kinguser/ng;
.source "SourceFile"


# instance fields
.field private final eE:Landroid/os/IBinder;

.field private final uL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/ng;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/lf;->uL:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/kingroot/kinguser/lf;->eE:Landroid/os/IBinder;

    .line 44
    return-void
.end method


# virtual methods
.method public dM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/lf;->uL:Ljava/lang/String;

    return-object v0
.end method

.method public dN()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/lf;->eE:Landroid/os/IBinder;

    return-object v0
.end method
