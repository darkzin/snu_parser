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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v0       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    jmp     l_f0_5                  #   0:     goto   5
    jmp     l_f0_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t4 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   8:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_11_while_cond:
    movl    $26950, %eax            #  14:     if     26950 < 70427 goto 12_while_body
    movl    $70427, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_12_while_body     
    jmp     l_f0_10                 #  15:     goto   10
l_f0_12_while_body:
    movl    $99, %eax               #  17:     if     99 <= 99 goto 15_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
    movl    $99, %eax               #  20:     assign v0 <- 99
    movb    %al, -21(%ebp)         
    call    ReadInt                 #  21:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $41813, %eax            #  22:     assign v1 <- 41813
    movl    %eax, -28(%ebp)        
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_11_while_cond      #  26:     goto   11_while_cond
l_f0_10:
    call    dummyProcedure          #  28:     call   dummyProcedure

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    call    dummyProcedure          #   4:     call   dummyProcedure
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_10_if_false        #   7:     goto   10_if_false
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $100, %eax              #  11:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_5                  #  12:     goto   5
l_f1_5:
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 61 of <array 26 of <array 82 of <array 32 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <bool> %ebp-14 ]

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
    movl    $3367, %eax             #   0:     assign v1 <- 3367
    movl    %eax, 12(%ebp)         
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $0, %eax                #   2:     if     0 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v3 <- t4
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  11:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  12:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    WriteLn                 #  15:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_2_while_cond     #   3:     goto   2_while_cond
l_test_1:
l_test_7_while_cond:
    movl    $54057, %eax            #   6:     div    t1 <- 54057, 99633
    movl    $99633, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     mul    t2 <- t1, 18379
    movl    $18379, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $39106, %eax            #   8:     if     39106 > t2 goto 8_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #   9:     goto   6
l_test_8_while_body:
    jmp     l_test_12_if_false      #  11:     goto   12_if_false
    jmp     l_test_10               #  12:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_7_while_cond     #  15:     goto   7_while_cond
l_test_6:
    movl    $34811, %eax            #  17:     if     34811 >= 40025 goto 14
    movl    $40025, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14              
    jmp     l_test_15               #  18:     goto   15
l_test_14:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_16               #  21:     goto   16
l_test_15:
    movl    $0, %eax                #  23:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_16:
    movzbl  -25(%ebp), %eax         #  25:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
