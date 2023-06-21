.class Lcom/kingroot/kinguser/bjr$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$7;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1236
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1237
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aa(Ljava/util/List;)V

    .line 1238
    return-void
.end method
