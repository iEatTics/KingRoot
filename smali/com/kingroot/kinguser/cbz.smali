.class final Lcom/kingroot/kinguser/cbz;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic bIb:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/kingroot/kinguser/cbz;->bIb:Ljava/io/File;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbz;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bzr$a;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/cbz;->bIb:Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/cbz;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cbx;->e(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    return-void
.end method
