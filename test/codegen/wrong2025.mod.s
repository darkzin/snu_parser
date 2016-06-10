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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 58 of <array 41 of <array 46 of <array 30 of <array 16 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 65 of <array 84 of <array 70 of <array 39 of <array 32 of <char>>>>>>> %ebp+20 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 > 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   5:     if     100 < 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   6:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   8:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #  12:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    movl    $34448, %eax            #  15:     if     34448 = 64102 goto 11_if_true
    movl    $64102, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  16:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_if_false:
l_f0_15:
    jmp     l_f0_exit              
    call    dummyINTfunc            #  24:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_21_while_cond:
    movl    $59622, %eax            #  26:     if     59622 < 43410 goto 22_while_body
    movl    $43410, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_22_while_body     
    jmp     l_f0_20                 #  27:     goto   20
l_f0_22_while_body:
    jmp     l_f0_21_while_cond      #  29:     goto   21_while_cond
l_f0_20:
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  32:     goto   10
l_f0_12_if_false:
l_f0_10:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    movl    $100, %eax              #   0:     return 100
    jmp     l_f1_exit              
    call    WriteLn                 #   1:     call   WriteLn
    call    WriteLn                 #   2:     call   WriteLn
    call    dummyBOOLfunc           #   3:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   4:     goto   0
l_f1_0:
l_f1_8_while_cond:
    movl    $97, %eax               #   7:     if     97 >= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    movl    $100, %eax              #  10:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  11:     call   WriteChar
    addl    $4, %esp               
    call    ReadInt                 #  12:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f1_14_while_cond:
    jmp     l_f1_13                 #  14:     goto   13
    jmp     l_f1_14_while_cond      #  15:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_8_while_cond       #  17:     goto   8_while_cond
l_f1_7:
    call    dummyCHARfunc           #  19:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 96 of <array 12 of <array 24 of <array 10 of <array 70 of <bool>>>>>>> %ebp+8 ]
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
    movl    $98, %eax               #   0:     assign v2 <- 98
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #   1:     return 97
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 < 99 goto 3
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_3                 
    jmp     l_f2_4                  #   4:     goto   4
l_f2_3:
    movl    $1, %eax                #   6:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_5                  #   7:     goto   5
l_f2_4:
    movl    $0, %eax                #   9:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f2_5:
    movzbl  -14(%ebp), %eax         #  11:     assign v1 <- t1
    movb    %al, 12(%ebp)          

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $96049, %eax            #   4:     assign v0 <- 96049
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
