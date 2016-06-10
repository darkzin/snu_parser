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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 22 of <array 86 of <array 85 of <array 97 of <array 82 of <bool>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $97, %eax               #   3:     if     97 = 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
    movl    $100, %eax              #   6:     assign v2 <- 100
    movb    %al, -18(%ebp)         
    jmp     l_f0_1                  #   7:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  10:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 65 of <array 5 of <array 39 of <array 83 of <array 34 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_4                  #   1:     goto   4
l_f1_4:
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $23828, %eax            #   6:     div    t3 <- 23828, 69319
    movl    $69319, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     div    t4 <- t3, 85252
    movl    $85252, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     mul    t5 <- t4, 47470
    movl    $47470, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     mul    t6 <- t5, 80052
    movl    $80052, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     assign v2 <- t6
    movl    %eax, -32(%ebp)        
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -52(%ebp)   4  [ $t19      <ptr(4) to <array 65 of <array 5 of <array 39 of <array 83 of <array 34 of <char>>>>>>> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 33 of <array 5 of <array 73 of <array 23 of <array 55 of <char>>>>>>> %ebp+8 ]
    #    -85(%ebp)   1  [ $v1       <char> %ebp-85 ]
    #   -35768960(%ebp)  35768874  [ $v2       <array 65 of <array 5 of <array 39 of <array 83 of <array 34 of <char>>>>>> %ebp-35768960 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $35768948, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8942237, %ecx         
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35768960(%ebp)      # local array 'v2': 5 dimensions
    movl    $65,-35768956(%ebp)     #   dimension 1: 65 elements
    movl    $5,-35768952(%ebp)      #   dimension 2: 5 elements
    movl    $39,-35768948(%ebp)     #   dimension 3: 39 elements
    movl    $83,-35768944(%ebp)     #   dimension 4: 83 elements
    movl    $34,-35768940(%ebp)     #   dimension 5: 34 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_4_while_cond:
    movl    $100, %eax              #   3:     if     100 > 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5_while_body      
    jmp     l_f2_3                  #   4:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   6:     goto   4_while_cond
l_f2_3:
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   9:     goto   8_while_cond
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    movl    $98, %eax               #  12:     if     98 = 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  13:     goto   12_if_false
l_f2_11_if_true:
    movl    $2, %eax                #  15:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  16:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  17:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    $20979, %eax            #  18:     mul    t4 <- 20979, t3
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  19:     add    t5 <- t4, 55679
    movl    $55679, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  20:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  21:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  22:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  23:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  24:     add    t8 <- t7, 74626
    movl    $74626, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  25:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  26:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  27:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  28:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  29:     add    t11 <- t10, 41302
    movl    $41302, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  30:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  31:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  32:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  33:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  34:     add    t14 <- t13, 12537
    movl    $12537, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  35:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  36:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  37:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  38:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  39:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  40:     assign @t18 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f2_exit              
    movl    $0, %eax                #  42:     param  1 <- 0
    pushl   %eax                   
    leal    -35768960(%ebp), %eax   #  43:     &()    t19 <- v2
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  44:     param  0 <- t19
    pushl   %eax                   
    call    f1                      #  45:     call   f1
    addl    $8, %esp               
    jmp     l_f2_exit              
    jmp     l_f2_10                 #  47:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    dummyCHARfunc           #  50:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         

l_f2_exit:
    # epilogue
    addl    $35768948, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_5                #   2:     goto   5
    jmp     l_test_5                #   3:     goto   5
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
l_test_5:
    jmp     l_test_3_while_body     #   6:     goto   3_while_body
    jmp     l_test_1                #   7:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   9:     goto   2_while_cond
l_test_1:
l_test_10_while_cond:
    jmp     l_test_9                #  12:     goto   9
l_test_13_while_cond:
    jmp     l_test_12               #  14:     goto   12
    jmp     l_test_13_while_cond    #  15:     goto   13_while_cond
l_test_12:
l_test_16_while_cond:
    jmp     l_test_15               #  18:     goto   15
    jmp     l_test_16_while_cond    #  19:     goto   16_while_cond
l_test_15:
    movl    $100, %eax              #  21:     if     100 < 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_10_while_cond    #  27:     goto   10_while_cond
l_test_9:
    call    dummyCHARfunc           #  29:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #  30:     if     100 > t1 goto 23
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_23              
    jmp     l_test_24               #  31:     goto   24
l_test_23:
    movl    $1, %eax                #  33:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_25               #  34:     goto   25
l_test_24:
    movl    $0, %eax                #  36:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_25:
    movzbl  -15(%ebp), %eax         #  38:     assign v0 <- t2
    movb    %al, v0                

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
