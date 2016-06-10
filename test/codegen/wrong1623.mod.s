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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
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
l_f0_1_while_cond:
    movl    $16711, %eax            #   1:     if     16711 <= 83413 goto 2_while_body
    movl    $83413, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_6_if_false         #   4:     goto   6_if_false
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_7                  #   8:     goto   7
l_f0_7:
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  11:     goto   11_while_cond
    movl    $38886, %eax            #  12:     return 38886
    jmp     l_f0_exit              
    movl    $56521, %eax            #  13:     assign v1 <- 56521
    movl    %eax, -28(%ebp)        
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
    movl    $79638, %eax            #  16:     add    t1 <- 79638, 97270
    movl    $97270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  17:     param  0 <- t1
    pushl   %eax                   
    call    WriteInt                #  18:     call   WriteInt
    addl    $4, %esp               
    call    ReadInt                 #  19:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t3 <- t2, 56091
    movl    $56091, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     return t3
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 15 of <array 3 of <array 31 of <array 13 of <int>>>>>>> %ebp+8 ]
    #    -22(%ebp)   1  [ $v1       <bool> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 < t1 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $97, %eax               #   5:     if     97 >= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   6:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $98, %eax               #  11:     if     98 >= 98 goto 9
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9                 
    jmp     l_f1_10                 #  12:     goto   10
l_f1_9:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_11:
    movzbl  -14(%ebp), %eax         #  19:     assign v1 <- t2
    movb    %al, -22(%ebp)         
    jmp     l_f1_1_while_cond       #  20:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_exit              
    movl    $1, %eax                #  23:     if     1 # 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  24:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_18                 #  26:     goto   18
l_f1_18:
    jmp     l_f1_exit              
l_f1_23_while_cond:
    jmp     l_f1_23_while_cond      #  30:     goto   23_while_cond
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  32:     call   t3 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    ReadInt                 #  33:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  34:     if     98 = 100 goto 29_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_29_if_true        
    jmp     l_f1_30_if_false        #  35:     goto   30_if_false
l_f1_29_if_true:
    jmp     l_f1_28                 #  37:     goto   28
l_f1_30_if_false:
l_f1_28:
    call    dummyBOOLfunc           #  40:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_14                 #  41:     goto   14
l_f1_16_if_false:
l_f1_14:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 30 of <array 98 of <array 48 of <array 67 of <array 13 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -15(%ebp)         
l_f2_2_while_cond:
    movl    $98, %eax               #   2:     if     98 < 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, 12(%ebp)          
    jmp     l_f2_2_while_cond       #  11:     goto   2_while_cond
    call    dummyCHARfunc           #  12:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     return t2
    jmp     l_f2_exit              

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $100, %eax              #   2:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_test_4_while_cond:
    movl    $14294, %eax            #   5:     if     14294 <= 26589 goto 5_while_body
    movl    $26589, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_5_while_body    
    jmp     l_test_3                #   6:     goto   3
l_test_5_while_body:
l_test_11_while_cond:
    movl    $0, %eax                #   9:     if     0 # 1 goto 12_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_12_while_body   
    jmp     l_test_10               #  10:     goto   10
l_test_12_while_body:
    jmp     l_test_11_while_cond    #  12:     goto   11_while_cond
l_test_10:
    call    dummyBOOLfunc           #  14:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  15:     if     100 >= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  16:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  18:     goto   15
l_test_17_if_false:
l_test_15:
    call    WriteLn                 #  21:     call   WriteLn
    jmp     l_test_7                #  22:     goto   7
l_test_7:
    jmp     l_test_4_while_cond     #  24:     goto   4_while_cond
l_test_3:
    jmp     l_test_exit            
    call    WriteLn                 #  27:     call   WriteLn

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
