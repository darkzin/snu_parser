##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t19      <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 5 of <array 9 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 1 of <array 2 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 10 of <array 3 of <array 3 of <array 4 of <bool>>>>>>> %ebp+16 ]
    #    -89(%ebp)   1  [ $v3       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v4       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t1 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $75167, %eax            #   3:     mul    t2 <- 75167, t1
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $4088, %eax             #   4:     div    t3 <- 4088, 7019
    movl    $7019, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    $45194, %eax            #   5:     sub    t4 <- 45194, t3
    movl    -64(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    -60(%ebp), %eax         #   6:     add    t5 <- t2, t4
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   7:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   8:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   9:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  10:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  11:     add    t8 <- t7, 85083
    movl    $85083, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  12:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  13:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  14:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  15:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     add    t11 <- t10, 75398
    movl    $75398, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  17:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  18:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  19:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  20:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t14 <- t13, 45456
    movl    $45456, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  23:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  24:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  25:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  26:     add    t18 <- v1, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $100, %eax              #  27:     assign @t18 <- 100
    movl    -52(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $11172, %eax            #  28:     assign v4 <- 11172
    movl    %eax, -96(%ebp)        
    call    dummyBOOLfunc           #  29:     call   t19 <- dummyBOOLfunc
    movb    %al, -53(%ebp)         

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 5 of <array 10 of <array 3 of <array 3 of <array 4 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 2 of <array 4 of <array 1 of <array 1 of <array 2 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 5 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -12652(%ebp)  12624  [ $v2       <array 10 of <array 4 of <array 7 of <array 5 of <array 9 of <bool>>>>>> %ebp-12652 ]
    #   -12692(%ebp)  40  [ $v3       <array 2 of <array 4 of <array 1 of <array 1 of <array 2 of <char>>>>>> %ebp-12692 ]
    #   -14516(%ebp)  1824  [ $v4       <array 5 of <array 10 of <array 3 of <array 3 of <array 4 of <bool>>>>>> %ebp-14516 ]
    #   -14520(%ebp)   4  [ $v5       <int> %ebp-14520 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $14508, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3627, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-12652(%ebp)         # local array 'v2': 5 dimensions
    movl    $10,-12648(%ebp)        #   dimension 1: 10 elements
    movl    $4,-12644(%ebp)         #   dimension 2: 4 elements
    movl    $7,-12640(%ebp)         #   dimension 3: 7 elements
    movl    $5,-12636(%ebp)         #   dimension 4: 5 elements
    movl    $9,-12632(%ebp)         #   dimension 5: 9 elements
    movl    $5,-12692(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-12688(%ebp)         #   dimension 1: 2 elements
    movl    $4,-12684(%ebp)         #   dimension 2: 4 elements
    movl    $1,-12680(%ebp)         #   dimension 3: 1 elements
    movl    $1,-12676(%ebp)         #   dimension 4: 1 elements
    movl    $2,-12672(%ebp)         #   dimension 5: 2 elements
    movl    $5,-14516(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-14512(%ebp)         #   dimension 1: 5 elements
    movl    $10,-14508(%ebp)        #   dimension 2: 10 elements
    movl    $3,-14504(%ebp)         #   dimension 3: 3 elements
    movl    $3,-14500(%ebp)         #   dimension 4: 3 elements
    movl    $4,-14496(%ebp)         #   dimension 5: 4 elements

    # function body
    jmp     l_f1_exit              
    leal    -14516(%ebp), %eax      #   1:     &()    t1 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t1
    pushl   %eax                   
    leal    -12692(%ebp), %eax      #   3:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t2
    pushl   %eax                   
    leal    -12652(%ebp), %eax      #   5:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   7:     call   t4 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_f1_3_if_true          #   8:     goto   3_if_true
l_f1_3_if_true:
    movl    $97, %eax               #  10:     if     97 <= 98 goto 7_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_if_false:
l_f1_6:
    movl    $16091, %eax            #  16:     assign v5 <- 16091
    movl    %eax, -14520(%ebp)     
    jmp     l_f1_2                  #  17:     goto   2
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $14508, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 9 of <array 6 of <array 4 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 2 of <array 1 of <array 4 of <array 1 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_0:
    movl    $89244, %eax            #   4:     sub    t3 <- 89244, 6481
    movl    $6481, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     sub    t4 <- t3, 9847
    movl    $9847, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   6:     call   t5 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   7:     sub    t6 <- t4, t5
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     return t6
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   9:     call   t7 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  10:     if     t7 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_7                  #  11:     goto   7
    jmp     l_f2_8                  #  12:     goto   8
l_f2_7:
    movl    $1, %eax                #  14:     assign t8 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_9                  #  15:     goto   9
l_f2_8:
    movl    $0, %eax                #  17:     assign t8 <- 0
    movb    %al, -34(%ebp)         
l_f2_9:
    movzbl  -34(%ebp), %eax         #  19:     assign v0 <- t8
    movb    %al, 8(%ebp)           

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
l_test_6_while_cond:
    jmp     l_test_5                #   8:     goto   5
l_test_9_while_cond:
    jmp     l_test_8                #  10:     goto   8
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  13:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_6_while_cond     #  14:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
