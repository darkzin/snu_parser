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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 6 of <array 10 of <array 1 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 1 of <array 5 of <array 7 of <array 8 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 6 of <array 7 of <array 10 of <array 9 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyINTfunc            #   1:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   6:     goto   5
l_f0_9_while_cond:
    jmp     l_f0_8                  #   8:     goto   8
    jmp     l_f0_9_while_cond       #   9:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  13:     goto   6_while_cond
l_f0_5:
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
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 > 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  10:     return t2
    jmp     l_f1_exit              
    call    dummyProcedure          #  11:     call   dummyProcedure

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 1 of <array 7 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 10 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 7 of <array 4 of <array 4 of <array 7 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 9 of <array 1 of <array 9 of <array 8 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $61647, %eax            #   2:     if     61647 <= 34925 goto 3_while_body
    movl    $34925, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    call    dummyINTfunc            #   5:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     if     t3 >= 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #  10:     goto   8_if_false
l_f2_7_if_true:
l_f2_11_while_cond:
    movl    $46367, %eax            #  13:     if     46367 < 16964 goto 12_while_body
    movl    $16964, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_12_while_body     
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  16:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_exit              
    jmp     l_f2_15                 #  19:     goto   15
l_f2_15:
l_f2_19_while_cond:
    jmp     l_f2_19_while_cond      #  22:     goto   19_while_cond
    jmp     l_f2_6                  #  23:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $100, %eax              #   3:     if     100 > 99 goto 4_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_if_true       
    jmp     l_test_5_if_false       #   4:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #   7:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_3                #   8:     goto   3
l_test_5_if_false:
l_test_3:
    movl    $37989, %eax            #  11:     if     37989 <= 52025 goto 13
    movl    $52025, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13              
    jmp     l_test_14               #  12:     goto   14
l_test_13:
    movl    $1, %eax                #  14:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_15               #  15:     goto   15
l_test_14:
    movl    $0, %eax                #  17:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_15:
    movzbl  -13(%ebp), %eax         #  19:     assign v1 <- t0
    movb    %al, v1                
    movl    $0, %eax                #  20:     assign v1 <- 0
    movb    %al, v1                
    movl    $57884, %eax            #  21:     if     57884 = 96510 goto 19_if_true
    movl    $96510, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_19_if_true      
    jmp     l_test_20_if_false      #  22:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  24:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_9                #  27:     goto   9
l_test_9:
l_test_23_while_cond:
    movl    $100, %eax              #  30:     if     100 = 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24_while_body   
    jmp     l_test_22               #  31:     goto   22
l_test_24_while_body:
    jmp     l_test_26               #  33:     goto   26
l_test_26:
    jmp     l_test_29               #  35:     goto   29
l_test_29:
    jmp     l_test_32               #  37:     goto   32
l_test_32:
    jmp     l_test_23_while_cond    #  39:     goto   23_while_cond
l_test_22:

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
