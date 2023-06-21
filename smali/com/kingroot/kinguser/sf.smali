.class public abstract Lcom/kingroot/kinguser/sf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Gx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/sf;->Gx:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/kingroot/kinguser/sf;->Gx:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected jk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/sf;->Gx:Ljava/lang/String;

    return-object v0
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method
