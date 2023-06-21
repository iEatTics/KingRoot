.class public Lcom/kingroot/kinguser/bke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bke$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final byZ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/bke$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final bza:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/bke$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final bzb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/bke$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final bzc:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/bke$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/kingroot/kinguser/bke;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bke;->a:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bke;->byZ:Ljava/util/LinkedList;

    .line 39
    sget-object v0, Lcom/kingroot/kinguser/bke;->byZ:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivityMultiple1;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/kingroot/kinguser/bke;->byZ:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivityMultiple2;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bke;->bza:Ljava/util/LinkedList;

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/bke;->bza:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleInstance1;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/kingroot/kinguser/bke;->bza:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleInstance2;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bke;->bzb:Ljava/util/LinkedList;

    .line 53
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzb:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleTask1;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzb:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleTask2;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bke;->bzc:Ljava/util/LinkedList;

    .line 60
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzc:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleTop1;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzc:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/bke$a;

    const-class v2, Lcom/kingroot/loader/host/stub/KlActivitySingleTop2;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bke$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bke;->f:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized f(ILjava/lang/String;I)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    const-class v2, Lcom/kingroot/kinguser/bke;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bke;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityClass, id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", fname : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", launch mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/bke;->e(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/bke;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 77
    if-nez v0, :cond_1

    .line 79
    packed-switch p2, :pswitch_data_0

    .line 93
    sget-object v0, Lcom/kingroot/kinguser/bke;->byZ:Ljava/util/LinkedList;

    move-object v1, v0

    .line 96
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bke$a;

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 98
    iget-object v1, v0, Lcom/kingroot/kinguser/bke$a;->bzd:Ljava/lang/Class;

    .line 99
    sget-object v4, Lcom/kingroot/kinguser/bke;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got clz : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pre key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kingroot/kinguser/bke$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v4, v0, Lcom/kingroot/kinguser/bke$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/kingroot/kinguser/bke;->f:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/kingroot/kinguser/bke$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    iput-object v3, v0, Lcom/kingroot/kinguser/bke$a;->b:Ljava/lang/String;

    .line 103
    sget-object v3, Lcom/kingroot/kinguser/bke;->f:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/bke$a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/bke$a;->bzd:Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 108
    :goto_1
    monitor-exit v2

    return-object v0

    .line 81
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bke;->byZ:Ljava/util/LinkedList;

    move-object v1, v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/bke;->bza:Ljava/util/LinkedList;

    move-object v1, v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzb:Ljava/util/LinkedList;

    move-object v1, v0

    .line 88
    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v0, Lcom/kingroot/kinguser/bke;->bzc:Ljava/util/LinkedList;

    move-object v1, v0

    .line 91
    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bke;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got cached clz : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
