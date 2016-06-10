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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 4 of <array 10 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 2 of <array 1 of <array 5 of <int>>>>>>> %ebp+12 ]

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
l_f0_4_while_cond:
    jmp     l_f0_4_while_cond       #   1:     goto   4_while_cond
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     return t2
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   4:     goto   0
l_f0_0:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  10:     goto   13_while_cond
l_f0_16_while_cond:
    movl    $0, %eax                #  12:     if     0 # 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_17_while_body     
    jmp     l_f0_15                 #  13:     goto   15
l_f0_17_while_body:
    jmp     l_f0_16_while_cond      #  15:     goto   16_while_cond
l_f0_15:
    jmp     l_f0_8                  #  17:     goto   8
l_f0_10_if_false:
l_f0_8:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 10 of <array 8 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <ptr(4) to <array 1 of <array 10 of <array 2 of <array 1 of <array 5 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t21      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t22      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t23      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t3       <ptr(4) to <array 1 of <array 3 of <array 4 of <array 10 of <array 7 of <int>>>>>>> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <char> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t7       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 5 of <array 9 of <char>>>>>>> %ebp+20 ]
    #   -3484(%ebp)  3384  [ $v4       <array 1 of <array 3 of <array 4 of <array 10 of <array 7 of <int>>>>>> %ebp-3484 ]
    #   -3908(%ebp)  424  [ $v5       <array 1 of <array 10 of <array 2 of <array 1 of <array 5 of <int>>>>>> %ebp-3908 ]
    #   -3909(%ebp)   1  [ $v6       <char> %ebp-3909 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $3900, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $975, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3484(%ebp)          # local array 'v4': 5 dimensions
    movl    $1,-3480(%ebp)          #   dimension 1: 1 elements
    movl    $3,-3476(%ebp)          #   dimension 2: 3 elements
    movl    $4,-3472(%ebp)          #   dimension 3: 4 elements
    movl    $10,-3468(%ebp)         #   dimension 4: 10 elements
    movl    $7,-3464(%ebp)          #   dimension 5: 7 elements
    movl    $5,-3908(%ebp)          # local array 'v5': 5 dimensions
    movl    $1,-3904(%ebp)          #   dimension 1: 1 elements
    movl    $10,-3900(%ebp)         #   dimension 2: 10 elements
    movl    $2,-3896(%ebp)          #   dimension 3: 2 elements
    movl    $1,-3892(%ebp)          #   dimension 4: 1 elements
    movl    $5,-3888(%ebp)          #   dimension 5: 5 elements

    # function body
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -3908(%ebp), %eax       #   6:     &()    t2 <- v5
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    leal    -3484(%ebp), %eax       #   8:     &()    t3 <- v4
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  10:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -77(%ebp)         
    movzbl  -77(%ebp), %eax         #  11:     return t4
    jmp     l_f2_exit              
    movl    $24888, %eax            #  12:     mul    t5 <- 24888, 87699
    movl    $87699, %ebx           
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  13:     div    t6 <- t5, 87412
    movl    $87412, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  17:     mul    t8 <- t6, t7
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    $14751, %eax            #  18:     add    t9 <- 14751, 67739
    movl    $67739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  19:     add    t10 <- t8, t9
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  21:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  22:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  23:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t13 <- t12, 82660
    movl    $82660, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  26:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  27:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  28:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  29:     add    t16 <- t15, 17505
    movl    $17505, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  31:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  32:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  33:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t19 <- t18, 14024
    movl    $14024, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  35:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    20(%ebp), %eax          #  36:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  37:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  38:     add    t22 <- t20, t21
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  39:     add    t23 <- v3, t22
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $99, %eax               #  40:     assign @t23 <- 99
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $3900, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_5_if_false       #   5:     goto   5_if_false
    movl    $69189, %eax            #   6:     param  0 <- 69189
    pushl   %eax                   
    call    WriteInt                #   7:     call   WriteInt
    addl    $4, %esp               
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_3                #  13:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $57344, %eax            #  16:     sub    t1 <- 57344, 35923
    movl    $35923, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     assign v1 <- t1
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
