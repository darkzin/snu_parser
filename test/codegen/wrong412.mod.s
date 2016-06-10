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
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <bool> %ebp-26 ]

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
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   6:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $36269, %eax            #   7:     div    t2 <- 36269, t1
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     return t2
    jmp     l_f0_exit              
    movl    $38733, %eax            #   9:     add    t3 <- 38733, 24629
    movl    $24629, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $76519, %eax            #  10:     if     76519 <= t3 goto 7
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_7                 
    jmp     l_f0_8                  #  11:     goto   8
l_f0_7:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_9                  #  14:     goto   9
l_f0_8:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_9:
    movzbl  -25(%ebp), %eax         #  18:     assign v1 <- t4
    movb    %al, -26(%ebp)         

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
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 3 of <array 4 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_3_if_true          #   4:     goto   3_if_true
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    movl    $97, %eax               #   7:     return 97
    jmp     l_f1_exit              
    leal    _str_1, %eax            #   8:     &()    t3 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  10:     call   WriteStr
    addl    $4, %esp               
    movl    $100, %eax              #  11:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    movl    $81282, %eax            #  12:     assign v4 <- 81282
    movl    %eax, 20(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_10                 #  14:     goto   10
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
l_f1_14_while_cond:
    movl    $18049, %eax            #  18:     if     18049 < 57350 goto 15_while_body
    movl    $57350, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:
    call    dummyCHARfunc           #  23:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  24:     return 98
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  25:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
l_f1_21_while_cond:
    jmp     l_f1_21_while_cond      #  27:     goto   21_while_cond
    call    dummyProcedure          #  28:     call   dummyProcedure
    jmp     l_f1_2                  #  29:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 6 of <array 4 of <array 6 of <array 6 of <char>>>>>>> %ebp+12 ]

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
l_f2_1_while_cond:
    movl    $62214, %eax            #   1:     mul    t1 <- 62214, 70245
    movl    $70245, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t2 <- t1, 74489
    movl    $74489, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $53447, %eax            #   3:     if     53447 < t2 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    f0                      #   8:     call   t3 <- f0
    movl    %eax, -24(%ebp)        
    call    WriteLn                 #   9:     call   WriteLn

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_exit            
    movl    $1, %eax                #   2:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   3:     goto   5
    movl    $0, %eax                #   4:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_5:
    movzbl  -13(%ebp), %eax         #   6:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_14_if_false      #   8:     goto   14_if_false
    movl    $2331, %eax             #   9:     if     2331 # 75857 goto 17_if_true
    movl    $75857, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_17_if_true      
    jmp     l_test_18_if_false      #  10:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  12:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
