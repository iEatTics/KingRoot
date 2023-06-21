.class final Lcom/kingroot/kinguser/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/kg$b;


# instance fields
.field final synthetic sa:Ljava/lang/String;

.field final synthetic sb:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/ij;->sa:Ljava/lang/String;

    iput-object p2, p0, Lcom/kingroot/kinguser/ij;->sb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/ij;->sa:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/ij;->sb:Ljava/lang/String;

    return-object v0
.end method
