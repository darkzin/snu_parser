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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 8 of <array 10 of <array 3 of <array 3 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_1_if_true          #   1:     goto   1_if_true
    jmp     l_f0_1_if_true          #   2:     goto   1_if_true
    jmp     l_f0_1_if_true          #   3:     goto   1_if_true
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
l_f0_1_if_true:
l_f0_9_while_cond:
    jmp     l_f0_8                  #   7:     goto   8
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
l_f0_8:
    movl    $23437, %eax            #  10:     assign v3 <- 23437
    movl    %eax, -32(%ebp)        
    movl    $42559, %eax            #  11:     return 42559
    jmp     l_f0_exit              
    jmp     l_f0_15_if_false        #  12:     goto   15_if_false
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_if_false:
l_f0_13:
l_f0_17_while_cond:
    movl    $100, %eax              #  17:     if     100 <= 97 goto 18_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_18_while_body     
    jmp     l_f0_16                 #  18:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  20:     goto   17_while_cond
l_f0_16:
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  23:     goto   21_while_cond
l_f0_24_while_cond:
    jmp     l_f0_24_while_cond      #  25:     goto   24_while_cond
l_f0_27_while_cond:
    movl    $98, %eax               #  27:     if     98 < 98 goto 28_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_28_while_body     
    jmp     l_f0_26                 #  28:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  30:     goto   27_while_cond
l_f0_26:
    movl    $100, %eax              #  32:     if     100 < 100 goto 31_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_31_if_true        
    jmp     l_f0_32_if_false        #  33:     goto   32_if_false
l_f0_31_if_true:
    jmp     l_f0_30                 #  35:     goto   30
l_f0_32_if_false:
l_f0_30:
    jmp     l_f0_0                  #  38:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_35_while_cond:
    call    dummyINTfunc            #  42:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $22718, %eax            #  43:     mul    t2 <- 22718, 72217
    movl    $72217, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  44:     div    t3 <- t2, 36238
    movl    $36238, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -16(%ebp), %eax         #  45:     if     t1 > t3 goto 36_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_36_while_body     
    jmp     l_f0_34                 #  46:     goto   34
l_f0_36_while_body:
    jmp     l_f0_35_while_cond      #  48:     goto   35_while_cond
l_f0_34:
    jmp     l_f0_39_if_true         #  50:     goto   39_if_true
    jmp     l_f0_40_if_false        #  51:     goto   40_if_false
l_f0_39_if_true:
    movl    $10194, %eax            #  53:     return 10194
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  54:     call   t4 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_38                 #  55:     goto   38
l_f0_40_if_false:
l_f0_38:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 9 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $30413, %eax            #   1:     mul    t2 <- 30413, 29288
    movl    $29288, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v2 <- t2
    movl    %eax, -28(%ebp)        
    jmp     l_f1_7                  #   3:     goto   7
    jmp     l_f1_7                  #   4:     goto   7
    jmp     l_f1_7                  #   5:     goto   7
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  11:     if     t3 = 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  12:     goto   4_if_false
l_f1_3_if_true:
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movl    $75018, %eax            #  15:     if     75018 <= 82540 goto 14_if_true
    movl    $82540, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  16:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $98, %eax               #  21:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  22:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 3 of <array 7 of <array 1 of <array 9 of <array 9 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 1 of <array 9 of <array 2 of <array 1 of <int>>>>>>> %ebp+8 ]
    #   -1748(%ebp)  1725  [ $v1       <array 3 of <array 7 of <array 1 of <array 9 of <array 9 of <char>>>>>> %ebp-1748 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1736, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $434, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1748(%ebp)          # local array 'v1': 5 dimensions
    movl    $3,-1744(%ebp)          #   dimension 1: 3 elements
    movl    $7,-1740(%ebp)          #   dimension 2: 7 elements
    movl    $1,-1736(%ebp)          #   dimension 3: 1 elements
    movl    $9,-1732(%ebp)          #   dimension 4: 9 elements
    movl    $9,-1728(%ebp)          #   dimension 5: 9 elements

    # function body
    jmp     l_f2_exit              
l_f2_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   3:     param  1 <- 98
    pushl   %eax                   
    leal    -1748(%ebp), %eax       #   4:     &()    t2 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  0 <- t2
    pushl   %eax                   
    call    f1                      #   6:     call   t3 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t1 < t3 goto 3_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #   8:     goto   1
l_f2_3_while_body:
    jmp     l_f2_2_while_cond       #  10:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    jmp     l_f2_7_while_body       #  13:     goto   7_while_body
    call    dummyBOOLfunc           #  14:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  15:     if     t4 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_while_body      
    jmp     l_f2_5                  #  16:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  18:     goto   6_while_cond
l_f2_5:

l_f2_exit:
    # epilogue
    addl    $1736, %esp             # remove locals
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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
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
