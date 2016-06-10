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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 16 of <array 19 of <array 21 of <array 74 of <array 13 of <bool>>>>>>> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t2 < 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_2                 
    jmp     l_f0_3                  #   3:     goto   3
l_f0_2:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -15(%ebp)         
l_f0_4:
    movzbl  -15(%ebp), %eax         #  10:     return t3
    jmp     l_f0_exit              
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_9                  #  12:     goto   9
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -16(%ebp)         
l_f0_9:
    movzbl  -16(%ebp), %eax         #  15:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 38 of <array 100 of <array 49 of <array 89 of <array 45 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 74 of <array 48 of <array 13 of <array 56 of <array 71 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 97 of <array 56 of <array 19 of <array 33 of <int>>>>>>> %ebp+20 ]
    #    -88(%ebp)   4  [ $v4       <int> %ebp-88 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t1
    movb    %al, 16(%ebp)          
    movl    $76325, %eax            #   2:     if     76325 >= 70357 goto 2_if_true
    movl    $70357, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_6                  #   7:     goto   6
    jmp     l_f1_7_while_cond       #   8:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_1                  #  10:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    ReadInt                 #  13:     call   t2 <- ReadInt
    movl    %eax, -56(%ebp)        
    movl    $2, %eax                #  14:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  15:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  16:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $38009, %eax            #  17:     mul    t4 <- 38009, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  18:     add    t5 <- t4, 87674
    movl    $87674, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  19:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  20:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  21:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  22:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  23:     add    t8 <- t7, 60530
    movl    $60530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  24:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  25:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  26:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  27:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  28:     add    t11 <- t10, 47980
    movl    $47980, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $5, %eax                #  29:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  30:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  31:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  32:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  33:     add    t14 <- t13, 32432
    movl    $32432, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t15 <- t14, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    20(%ebp), %eax          #  35:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  36:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  37:     add    t17 <- t15, t16
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    20(%ebp), %eax          #  38:     add    t18 <- v3, t17
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -56(%ebp), %eax         #  39:     assign @t18 <- t2
    movl    -52(%ebp), %edi        
    movl    %eax, (%edi)           

l_f1_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 16 of <array 19 of <array 21 of <array 74 of <array 13 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 12 of <array 20 of <array 59 of <array 88 of <array 59 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 33 of <array 84 of <array 40 of <array 96 of <array 15 of <bool>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #   -6141460(%ebp)  6141432  [ $v3       <array 16 of <array 19 of <array 21 of <array 74 of <array 13 of <bool>>>>>> %ebp-6141460 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $6141448, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $1535362, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-6141460(%ebp)       # local array 'v3': 5 dimensions
    movl    $16,-6141456(%ebp)      #   dimension 1: 16 elements
    movl    $19,-6141452(%ebp)      #   dimension 2: 19 elements
    movl    $21,-6141448(%ebp)      #   dimension 3: 21 elements
    movl    $74,-6141444(%ebp)      #   dimension 4: 74 elements
    movl    $13,-6141440(%ebp)      #   dimension 5: 13 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
    movl    $74447, %eax            #   2:     if     74447 # 98865 goto 3_if_true
    movl    $98865, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_exit              
    movl    $79402, %eax            #   6:     assign v2 <- 79402
    movl    %eax, -28(%ebp)        
    leal    -6141460(%ebp), %eax    #   7:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t2
    pushl   %eax                   
    movl    $94664, %eax            #   9:     param  0 <- 94664
    pushl   %eax                   
    call    f0                      #  10:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_2                  #  11:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $6141448, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_2_while_body     #   3:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $0, %eax                #   8:     assign v0 <- 0
    movb    %al, v0                
l_test_11_while_cond:
    jmp     l_test_13               #  10:     goto   13
l_test_13:
    jmp     l_test_exit            
    call    dummyINTfunc            #  13:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_11_while_cond    #  14:     goto   11_while_cond
    movl    $97, %eax               #  15:     assign v1 <- 97
    movb    %al, v1                

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

    # scope: test
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
