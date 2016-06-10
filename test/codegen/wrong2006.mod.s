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
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 57 of <array 96 of <array 27 of <array 69 of <bool>>>>>>> %ebp+12 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v4       <char> %ebp-17 ]

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
    movl    $97569, %eax            #   0:     if     97569 > 8955 goto 1_if_true
    movl    $8955, %ebx            
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $77216, %eax            #   3:     assign v3 <- 77216
    movl    %eax, -16(%ebp)        
    movl    $99, %eax               #   4:     assign v4 <- 99
    movb    %al, -17(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   9:     goto   6
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $100, %eax              #  12:     if     100 >= 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    jmp     l_f0_14                 #  17:     goto   14
l_f0_14:
    jmp     l_f0_7_while_cond       #  19:     goto   7_while_cond
l_f0_6:
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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    jmp     l_f1_1                  #   0:     goto   1
    jmp     l_f1_1                  #   1:     goto   1
    jmp     l_f1_1                  #   2:     goto   1
    jmp     l_f1_1                  #   3:     goto   1
l_f1_1:
    movl    $1, %eax                #   5:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_3                  #   6:     goto   3
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f1_3:
    movzbl  -15(%ebp), %eax         #   9:     assign v2 <- t9
    movb    %al, -16(%ebp)         
    jmp     l_f1_10                 #  10:     goto   10
    call    dummyBOOLfunc           #  11:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     if     t10 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_10                
    jmp     l_f1_11                 #  13:     goto   11
l_f1_10:
    movl    $1, %eax                #  15:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_12                 #  16:     goto   12
l_f1_11:
    movl    $0, %eax                #  18:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f1_12:
    movzbl  -14(%ebp), %eax         #  20:     return t11
    jmp     l_f1_exit              
    jmp     l_f1_16_if_false        #  21:     goto   16_if_false
    jmp     l_f1_16_if_false        #  22:     goto   16_if_false
l_f1_20_while_cond:
    jmp     l_f1_19                 #  24:     goto   19
    jmp     l_f1_20_while_cond      #  25:     goto   20_while_cond
l_f1_19:
    jmp     l_f1_14                 #  27:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 89 of <array 47 of <array 36 of <array 39 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 96 of <array 80 of <array 99 of <array 99 of <array 39 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 12 of <array 97 of <array 68 of <array 82 of <array 76 of <int>>>>>>> %ebp+20 ]
    #    -25(%ebp)   1  [ $v5       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    WriteLn                 #   0:     call   WriteLn
    movl    $93371, %eax            #   1:     mul    t9 <- 93371, 19776
    movl    $19776, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $10199, %eax            #   2:     sub    t10 <- 10199, 78358
    movl    $78358, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -24(%ebp), %eax         #   3:     if     t9 < t10 goto 2
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2                 
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $1, %eax                #   6:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $0, %eax                #   9:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f2_4:
    movzbl  -17(%ebp), %eax         #  11:     assign v5 <- t11
    movb    %al, -25(%ebp)         
l_f2_7_while_cond:
    movl    $14008, %eax            #  13:     if     14008 > 84451 goto 8_while_body
    movl    $84451, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  14:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  16:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $420, %eax              #   0:     sub    t0 <- 420, 40753
    movl    $40753, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 41599
    movl    $41599, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t2 <- t1, 1898
    movl    $1898, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    call    ReadInt                 #   3:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t2 >= t3 goto 1
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   5:     goto   2
l_test_1:
    movl    $1, %eax                #   7:     assign t4 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_3                #   8:     goto   3
l_test_2:
    movl    $0, %eax                #  10:     assign t4 <- 0
    movb    %al, -29(%ebp)         
l_test_3:
    movzbl  -29(%ebp), %eax         #  12:     assign v0 <- t4
    movb    %al, v0                
    movl    $9233, %eax             #  13:     mul    t5 <- 9233, 91035
    movl    $91035, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     div    t6 <- t5, 84485
    movl    $84485, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     mul    t7 <- t6, 38441
    movl    $38441, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     div    t8 <- t7, 75867
    movl    $75867, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    $97610, %eax            #  17:     if     97610 < t8 goto 6_if_true
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  18:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  21:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    movl    $98, %eax               #  25:     assign v1 <- 98
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
