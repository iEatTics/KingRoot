.class public Lcom/swift/sandhook/wrapper/HookWrapper;
.super Ljava/lang/Object;
.source "HookWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->getTargetHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p0, v0, p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->getHookMethods(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 45
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/swift/sandhook/wrapper/HookWrapper;->fillBackupMethod(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 50
    invoke-static {p1}, Lcom/swift/sandhook/SandHook;->hook(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 47
    new-instance p1, Lcom/swift/sandhook/wrapper/HookErrorException;

    const-string v0, "fillBackupMethod error!"

    invoke-direct {p1, v0, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 42
    :cond_1
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error hook wrapper class :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static varargs addHookClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 35
    invoke-static {p0, v2}, Lcom/swift/sandhook/wrapper/HookWrapper;->addHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs addHookClass([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    invoke-static {v0, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->addHookClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)V

    return-void
.end method

.method public static checkSignature(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 469
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    const-string v1, "error return type! - "

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 473
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 474
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_3

    invoke-virtual {v0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 475
    :cond_2
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 477
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/Class;

    :cond_4
    if-nez p2, :cond_5

    new-array p2, v1, [Ljava/lang/Class;

    .line 482
    :cond_5
    array-length v2, p2

    if-nez v2, :cond_6

    array-length v2, v0

    if-nez v2, :cond_6

    return-void

    .line 485
    :cond_6
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    const-string v3, "hook method pars must match the origin method! "

    const/4 v4, 0x1

    if-nez v2, :cond_b

    .line 487
    array-length v2, v0

    const-string v5, "first par must be this! "

    if-eqz v2, :cond_a

    .line 489
    aget-object v2, v0, v1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v2, v6, :cond_8

    aget-object v2, v0, v1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    .line 490
    :cond_7
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_8
    :goto_1
    array-length p0, v0

    array-length v2, p2

    add-int/2addr v2, v4

    if-ne p0, v2, :cond_9

    goto :goto_2

    .line 492
    :cond_9
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 488
    :cond_a
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 494
    :cond_b
    array-length p0, v0

    array-length v2, p2

    if-ne p0, v2, :cond_f

    const/4 v4, 0x0

    .line 497
    :goto_2
    array-length p0, p2

    if-ge v1, p0, :cond_e

    add-int p0, v1, v4

    .line 498
    aget-object v2, v0, p0

    aget-object v5, p2, v1

    if-eq v2, v5, :cond_d

    aget-object p0, v0, p0

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_3

    .line 499
    :cond_c
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void

    .line 495
    :cond_f
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 468
    :cond_10
    new-instance p0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hook method must static! - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static classNameToClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "."

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 393
    :pswitch_0
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 390
    :pswitch_1
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 387
    :pswitch_2
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 384
    :pswitch_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 381
    :pswitch_4
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 378
    :pswitch_5
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 375
    :pswitch_6
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_3

    .line 372
    :pswitch_7
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_3

    :cond_1
    :goto_2
    if-nez p1, :cond_2

    .line 400
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_3

    .line 402
    :cond_2
    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fillBackupMethod(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_d

    .line 59
    array-length v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 61
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_d

    aget-object v6, v2, v5

    .line 64
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    move-object v10, p0

    move-object/from16 v13, p1

    goto/16 :goto_8

    .line 66
    :cond_3
    const-class v0, Lcom/swift/sandhook/annotation/HookMethodBackup;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/swift/sandhook/annotation/HookMethodBackup;

    if-nez v7, :cond_4

    goto :goto_2

    .line 69
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 70
    invoke-interface {v7}, Lcom/swift/sandhook/annotation/HookMethodBackup;->value()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    :try_start_1
    const-string v0, "getHookMethodBackupName"

    new-array v12, v11, [Ljava/lang/Class;

    .line 73
    const-class v13, Ljava/lang/reflect/Method;

    aput-object v13, v12, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v13, p1

    :try_start_2
    invoke-virtual {v13, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v14, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    aput-object v14, v12, v4

    .line 74
    invoke-virtual {v0, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    .line 76
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object/from16 v13, p1

    :goto_5
    move-object v0, v10

    .line 79
    :goto_6
    invoke-virtual {v9}, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->isCtor()Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "<init>"

    goto :goto_7

    :cond_7
    iget-object v10, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-interface {v10}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_7
    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->pars:[Ljava/lang/Class;

    move-object v10, p0

    .line 80
    invoke-static {p0, v6, v0}, Lcom/swift/sandhook/wrapper/HookWrapper;->samePars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Lcom/swift/sandhook/annotation/MethodAnyParams;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 81
    :cond_8
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    iget-object v0, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->backup:Ljava/lang/reflect/Method;

    if-nez v0, :cond_9

    .line 83
    invoke-static {}, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->getStubMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->backup:Ljava/lang/reflect/Method;

    .line 84
    iput-boolean v11, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hookIsStub:Z

    .line 85
    iput-boolean v4, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->resolveDexCache:Z

    .line 87
    :cond_9
    iget-object v0, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->backup:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    goto :goto_3

    .line 90
    :cond_a
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v11, Ljava/lang/reflect/Method;

    if-ne v0, v11, :cond_b

    .line 91
    iget-object v0, v9, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->backup:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 92
    :cond_b
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v11, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    if-ne v0, v11, :cond_5

    .line 93
    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    move-object v10, p0

    goto/16 :goto_3

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    :goto_9
    return-void
.end method

.method public static getHookMethods(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 107
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_17

    .line 110
    array-length v0, v5

    if-eqz v0, :cond_17

    .line 112
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_16

    aget-object v0, v5, v8

    .line 113
    const-class v9, Lcom/swift/sandhook/annotation/HookMethod;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/swift/sandhook/annotation/HookMethod;

    .line 114
    const-class v10, Lcom/swift/sandhook/annotation/HookMethodBackup;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/swift/sandhook/annotation/HookMethodBackup;

    const-string v11, "<init>"

    if-eqz v9, :cond_b

    .line 119
    invoke-interface {v9}, Lcom/swift/sandhook/annotation/HookMethod;->value()Ljava/lang/String;

    move-result-object v9

    .line 120
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_1
    const-string v9, "getHookMethod"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    .line 122
    const-class v12, Ljava/lang/reflect/Method;

    aput-object v12, v11, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v12, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v7

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    if-nez v9, :cond_0

    goto/16 :goto_f

    .line 126
    :cond_0
    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v12, p2

    .line 128
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_1
    move-object/from16 v12, p2

    .line 132
    invoke-static {v1, v0}, Lcom/swift/sandhook/wrapper/HookWrapper;->parseMethodPars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v10

    .line 134
    :try_start_3
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v11, :cond_2

    .line 136
    :try_start_4
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_7

    .line 138
    :catch_2
    :try_start_5
    invoke-virtual {v2, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_7

    .line 142
    :cond_2
    :try_start_6
    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_7

    .line 144
    :catch_3
    :try_start_7
    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_7

    :catch_4
    nop

    .line 148
    const-class v11, Lcom/swift/sandhook/annotation/MethodAnyParams;

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 149
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "trying to find target method by name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_4

    aget-object v15, v11, v14

    .line 151
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    move-object v4, v15

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_6

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v13, v11

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_6

    aget-object v15, v11, v14

    .line 159
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 161
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    goto :goto_6

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :cond_6
    move-object v15, v4

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_8

    .line 168
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not find target method: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_8
    move-object v9, v15

    .line 172
    :goto_7
    const-class v4, Lcom/swift/sandhook/annotation/SkipParamCheck;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 173
    invoke-static {v9, v0, v10}, Lcom/swift/sandhook/wrapper/HookWrapper;->checkSignature(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    .line 176
    :cond_9
    :goto_8
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    if-nez v4, :cond_a

    .line 178
    new-instance v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    invoke-direct {v4, v9}, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;-><init>(Ljava/lang/reflect/Member;)V

    .line 179
    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_a
    iput-object v10, v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->pars:[Ljava/lang/Class;

    .line 182
    iput-object v0, v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    goto/16 :goto_f

    :cond_b
    move-object/from16 v12, p2

    if-eqz v10, :cond_15

    .line 184
    invoke-interface {v10}, Lcom/swift/sandhook/annotation/HookMethodBackup;->value()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-static {v1, v0}, Lcom/swift/sandhook/wrapper/HookWrapper;->parseMethodPars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v7

    .line 187
    :try_start_8
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v9, :cond_c

    .line 189
    :try_start_9
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_9

    .line 191
    :catch_5
    :try_start_a
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    .line 195
    :cond_c
    :try_start_b
    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_9

    .line 197
    :catch_6
    :try_start_c
    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_7

    :goto_9
    move-object v13, v4

    goto/16 :goto_e

    :catch_7
    nop

    .line 201
    const-class v9, Lcom/swift/sandhook/annotation/MethodAnyParams;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 202
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trying to find target backup method by name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v10, :cond_e

    aget-object v13, v9, v11

    .line 204
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 206
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    goto :goto_b

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    :goto_b
    if-nez v13, :cond_11

    .line 211
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v10, :cond_11

    aget-object v14, v9, v11

    .line 212
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 214
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object v13, v14

    goto :goto_d

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    :cond_11
    :goto_d
    if-nez v13, :cond_12

    .line 221
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not find target backup method: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 225
    :cond_12
    :goto_e
    const-class v4, Lcom/swift/sandhook/annotation/SkipParamCheck;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 226
    invoke-static {v13, v0, v7}, Lcom/swift/sandhook/wrapper/HookWrapper;->checkSignature(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    .line 228
    :cond_13
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    if-nez v4, :cond_14

    .line 230
    new-instance v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    invoke-direct {v4, v13}, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;-><init>(Ljava/lang/reflect/Member;)V

    .line 231
    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_14
    iput-object v7, v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->pars:[Ljava/lang/Class;

    .line 234
    iput-object v0, v4, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->backup:Ljava/lang/reflect/Method;

    :cond_15
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_16
    return-object v3

    .line 111
    :cond_17
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error hook wrapper class :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method private static getParsCount(Ljava/lang/reflect/Method;)I
    .locals 0

    .line 364
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 365
    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method private static getRealParType(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;Z)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 327
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 329
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 330
    instance-of v3, v2, Lcom/swift/sandhook/annotation/Param;

    if-eqz v3, :cond_4

    .line 331
    check-cast v2, Lcom/swift/sandhook/annotation/Param;

    .line 332
    invoke-interface {v2}, Lcom/swift/sandhook/annotation/Param;->value()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 334
    :cond_1
    invoke-interface {v2}, Lcom/swift/sandhook/annotation/Param;->value()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->classNameToClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    if-nez p3, :cond_3

    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 338
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "hook method par cast error!"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static getTargetHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 435
    const-class v0, Lcom/swift/sandhook/annotation/HookClass;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/annotation/HookClass;

    .line 436
    const-class v1, Lcom/swift/sandhook/annotation/HookReflectClass;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/swift/sandhook/annotation/HookReflectClass;

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0}, Lcom/swift/sandhook/annotation/HookClass;->value()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_4

    .line 441
    :try_start_0
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/HookReflectClass;->value()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :try_start_1
    const-string p0, "getHookClass"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 444
    invoke-virtual {p1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 446
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1
    const-string p1, "."

    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez p0, :cond_3

    .line 453
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p1, 0x1

    .line 455
    invoke-static {v1, p1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 458
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method private static hasThisObject(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 347
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    aget-object p0, p0, v0

    .line 350
    invoke-static {p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->isThisObject([Ljava/lang/annotation/Annotation;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static isThisObject([Ljava/lang/annotation/Annotation;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 354
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 357
    instance-of v3, v3, Lcom/swift/sandhook/annotation/ThisObject;

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static parseMethodPars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 275
    const-class v0, Lcom/swift/sandhook/annotation/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/annotation/MethodParams;

    .line 276
    const-class v1, Lcom/swift/sandhook/annotation/MethodReflectParams;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/swift/sandhook/annotation/MethodReflectParams;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lcom/swift/sandhook/annotation/MethodParams;->value()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 280
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    return-object v0

    .line 282
    :cond_1
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 283
    :goto_0
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 285
    :try_start_0
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->classNameToClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 287
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hook method pars error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method private static parseMethodPars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 243
    const-class v0, Lcom/swift/sandhook/annotation/MethodParams;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/annotation/MethodParams;

    .line 244
    const-class v1, Lcom/swift/sandhook/annotation/MethodReflectParams;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/swift/sandhook/annotation/MethodReflectParams;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/swift/sandhook/annotation/MethodParams;->value()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 248
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    return-object v0

    .line 250
    :cond_1
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 251
    :goto_0
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 253
    :try_start_0
    invoke-interface {v1}, Lcom/swift/sandhook/annotation/MethodReflectParams;->value()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->classNameToClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hook method pars error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object v0

    .line 259
    :cond_3
    invoke-static {p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->getParsCount(Ljava/lang/reflect/Method;)I

    move-result v1

    if-lez v1, :cond_6

    .line 260
    invoke-static {p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->getParsCount(Ljava/lang/reflect/Method;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 261
    invoke-static {p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->hasThisObject(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-static {p0, p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->parseMethodParsNew(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    .line 267
    :cond_5
    invoke-static {p0, p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->parseMethodParsNew(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method private static parseMethodParsNew(Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/swift/sandhook/wrapper/HookErrorException;
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 298
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 303
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 304
    aget-object v5, v0, v3

    .line 305
    aget-object v6, v2, v3

    if-nez v3, :cond_2

    .line 308
    invoke-static {v6}, Lcom/swift/sandhook/wrapper/HookWrapper;->isThisObject([Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/Class;

    goto :goto_1

    .line 313
    :cond_1
    array-length v1, v2

    new-array v1, v1, [Ljava/lang/Class;

    .line 317
    :cond_2
    :try_start_0
    const-class v7, Lcom/swift/sandhook/annotation/SkipParamCheck;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/swift/sandhook/wrapper/HookWrapper;->getRealParType(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/annotation/Annotation;Z)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hook method <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> parser pars error"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private static samePars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;[Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x0

    .line 411
    :try_start_0
    invoke-static {p0, p1}, Lcom/swift/sandhook/wrapper/HookWrapper;->parseMethodPars(Ljava/lang/ClassLoader;Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 412
    const-class v2, Lcom/swift/sandhook/annotation/SkipParamCheck;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v0, [Ljava/lang/Class;

    :cond_1
    if-nez p0, :cond_2

    new-array p0, v0, [Ljava/lang/Class;

    .line 419
    :cond_2
    array-length p1, p2

    array-length v2, p0

    if-eq p1, v2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    .line 421
    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_5

    .line 422
    aget-object v2, p2, p1

    aget-object v3, p0, p1
    :try_end_0
    .catch Lcom/swift/sandhook/wrapper/HookErrorException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return v1

    :catch_0
    return v0
.end method
